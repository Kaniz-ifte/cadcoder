<?php

namespace App\Classes\Tork;

use File;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;


class FileManager
{
    /**
     * SaveFile
     *
     * @param  mixed $file
     * @param  mixed $file_name
     * @param  mixed $directory
     * @return string
     */
    public static function SaveFile($file, $file_name, $directory): string
    {


        $file_name = $file_name . '.' . $file->extension();

        if ($file != '') {

            // return $file->storeAs($directory, $file_name);

            return Storage::putFileAs(
                $directory,
                $file,
                $file_name
            );
        } else {
            return "fail";
        }
    }

    /**
     * ResizeImage
     *
     * @param  mixed $file
     * @param  mixed $path
     * @param  mixed $width
     * @param  mixed $height
     * @return string
     */
    public static function ResizeImage($file, $path, $width, $height): string
    {
        $img = Image::make($file);
        $img->resize($width, $height);
        $img->save($path);
        return $path;
    }

    /**
     * DeleteFile
     *
     * @param  mixed $path
     * @return string
     */
    public static function DeleteFile($path): string
    {
        if (File::exists($path)) {

            File::delete($path);
        }
        return $path;
    }
}
