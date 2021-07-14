<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit6e8bebcab0d043fc452aa405318d1276
{
    public static $files = array (
        'fdebb5c5d6efd2c1a1d3bd653d998fea' => __DIR__ . '/..' . '/muvon/kiss-binary-codec/src/functions.php',
    );

    public static $prefixLengthsPsr4 = array (
        'M' => 
        array (
            'Muvon\\KISS\\' => 11,
            'Muvon\\Bitclout\\' => 15,
        ),
        'E' => 
        array (
            'Elliptic\\' => 9,
        ),
        'B' => 
        array (
            'BN\\' => 3,
            'BI\\' => 3,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Muvon\\KISS\\' => 
        array (
            0 => __DIR__ . '/..' . '/muvon/base58-codec/src',
            1 => __DIR__ . '/..' . '/muvon/kiss-binary-codec/src',
            2 => __DIR__ . '/..' . '/muvon/kiss-request-trait/src',
        ),
        'Muvon\\Bitclout\\' => 
        array (
            0 => __DIR__ . '/..' . '/muvon/bitclout-node-api/src',
            1 => __DIR__ . '/..' . '/muvon/bitclout-creator-coin/src',
        ),
        'Elliptic\\' => 
        array (
            0 => __DIR__ . '/..' . '/simplito/elliptic-php/lib',
        ),
        'BN\\' => 
        array (
            0 => __DIR__ . '/..' . '/simplito/bn-php/lib',
        ),
        'BI\\' => 
        array (
            0 => __DIR__ . '/..' . '/simplito/bigint-wrapper-php/lib',
        ),
    );

    public static $prefixesPsr0 = array (
        'B' => 
        array (
            'BIP\\' => 
            array (
                0 => __DIR__ . '/..' . '/minter/minter-php-bip-44/src',
            ),
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit6e8bebcab0d043fc452aa405318d1276::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit6e8bebcab0d043fc452aa405318d1276::$prefixDirsPsr4;
            $loader->prefixesPsr0 = ComposerStaticInit6e8bebcab0d043fc452aa405318d1276::$prefixesPsr0;
            $loader->classMap = ComposerStaticInit6e8bebcab0d043fc452aa405318d1276::$classMap;

        }, null, ClassLoader::class);
    }
}