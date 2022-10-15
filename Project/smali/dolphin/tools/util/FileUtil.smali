.class public Ldolphin/tools/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bytes2File([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "bfile"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 37
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 39
    .local v5, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v8, v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 47
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 52
    if-eqz v1, :cond_1

    .line 54
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 59
    :cond_1
    :goto_0
    if-eqz v8, :cond_6

    .line 61
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 67
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_1
    return-object v5

    .line 49
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 52
    if-eqz v0, :cond_3

    .line 54
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 59
    :cond_3
    :goto_3
    if-eqz v7, :cond_2

    .line 61
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 62
    :catch_1
    move-exception v4

    .line 63
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 55
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 56
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 51
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 52
    :goto_4
    if-eqz v0, :cond_4

    .line 54
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 59
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 61
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 66
    :cond_5
    :goto_6
    throw v9

    .line 55
    :catch_3
    move-exception v4

    .line 56
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 62
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 63
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 55
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    .line 56
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 63
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e1":Ljava/io/IOException;
    :cond_6
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 51
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_4

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 49
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_2

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method

.method public static final file2Bytes(Ljava/io/File;)[B
    .locals 6
    .param p0, "paramFile"    # Ljava/io/File;

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 15
    .local v0, "arrayOfByte1":[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 16
    .local v4, "s":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 17
    const/16 v5, 0x400

    .line 16
    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 18
    .local v3, "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 20
    .local v1, "arrayOfByte2":[B
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "i":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 23
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 24
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 25
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 30
    .end local v1    # "arrayOfByte2":[B
    .end local v2    # "i":I
    .end local v3    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "s":Ljava/io/FileInputStream;
    :goto_1
    return-object v0

    .line 21
    .restart local v1    # "arrayOfByte2":[B
    .restart local v2    # "i":I
    .restart local v3    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "s":Ljava/io/FileInputStream;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 26
    .end local v1    # "arrayOfByte2":[B
    .end local v2    # "i":I
    .end local v3    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "s":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 28
    :catch_1
    move-exception v5

    goto :goto_1

    .line 27
    :catch_2
    move-exception v5

    goto :goto_1
.end method
