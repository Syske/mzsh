.class Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;
.super Ljava/lang/Thread;
.source "DownLoadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkSelfUpdateThread"
.end annotation


# instance fields
.field private callback:Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;

.field private localPath:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->url:Ljava/net/URL;

    .line 81
    iput-object p2, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->localPath:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->callback:Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 87
    const/4 v11, 0x0

    .line 88
    .local v11, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 89
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 91
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const-wide/16 v18, 0xc8

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->localPath:Ljava/lang/String;

    .line 93
    .local v15, "savePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->url:Ljava/net/URL;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 94
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 95
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 96
    .local v12, "length":I
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 97
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 99
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 102
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->url:Ljava/net/URL;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 103
    .local v16, "urlpath":Ljava/lang/String;
    const/16 v17, 0x2f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v2, "apkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 106
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->forceDeleteOnExit(Ljava/io/File;)V

    .line 109
    :cond_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 111
    .local v5, "count":I
    const/16 v17, 0x400

    :try_start_1
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 113
    .local v3, "buf":[B
    :goto_0
    invoke-virtual {v11, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 114
    .local v13, "numread":I
    add-int/2addr v5, v13

    .line 115
    int-to-float v0, v5

    move/from16 v17, v0

    int-to-float v0, v12

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 116
    .local v14, "process":I
    if-gtz v13, :cond_7

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->callback:Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->callback:Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;->onSuccess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :cond_2
    if-eqz v11, :cond_3

    .line 132
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 133
    :cond_3
    if-eqz v10, :cond_4

    .line 134
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 135
    :cond_4
    if-eqz v4, :cond_5

    .line 136
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    move-object v9, v10

    .line 142
    .end local v2    # "apkFile":Ljava/io/File;
    .end local v3    # "buf":[B
    .end local v5    # "count":I
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "length":I
    .end local v13    # "numread":I
    .end local v14    # "process":I
    .end local v15    # "savePath":Ljava/lang/String;
    .end local v16    # "urlpath":Ljava/lang/String;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    :goto_1
    return-void

    .line 122
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "apkFile":Ljava/io/File;
    .restart local v3    # "buf":[B
    .restart local v5    # "count":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v13    # "numread":I
    .restart local v14    # "process":I
    .restart local v15    # "savePath":Ljava/lang/String;
    .restart local v16    # "urlpath":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v10, v3, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 124
    .end local v3    # "buf":[B
    .end local v13    # "numread":I
    .end local v14    # "process":I
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 125
    .end local v2    # "apkFile":Ljava/io/File;
    .end local v5    # "count":I
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "length":I
    .end local v15    # "savePath":Ljava/lang/String;
    .end local v16    # "urlpath":Ljava/lang/String;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->callback:Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$ApkSelfUpdateThread;->callback:Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/meizu/smart/wristband/utils/loadfile/DownLoadUtil$DownloadCallback;->onFailed()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    :cond_8
    if-eqz v11, :cond_9

    .line 132
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 133
    :cond_9
    if-eqz v9, :cond_a

    .line 134
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 135
    :cond_a
    if-eqz v4, :cond_6

    .line 136
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 137
    :catch_1
    move-exception v6

    .line 138
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "apkFile":Ljava/io/File;
    .restart local v3    # "buf":[B
    .restart local v5    # "count":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v13    # "numread":I
    .restart local v14    # "process":I
    .restart local v15    # "savePath":Ljava/lang/String;
    .restart local v16    # "urlpath":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 138
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v10

    .line 140
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 130
    .end local v2    # "apkFile":Ljava/io/File;
    .end local v3    # "buf":[B
    .end local v5    # "count":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v12    # "length":I
    .end local v13    # "numread":I
    .end local v14    # "process":I
    .end local v15    # "savePath":Ljava/lang/String;
    .end local v16    # "urlpath":Ljava/lang/String;
    :catchall_0
    move-exception v17

    .line 131
    :goto_3
    if-eqz v11, :cond_b

    .line 132
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 133
    :cond_b
    if-eqz v9, :cond_c

    .line 134
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 135
    :cond_c
    if-eqz v4, :cond_d

    .line 136
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 139
    :cond_d
    :goto_4
    throw v17

    .line 137
    :catch_3
    move-exception v6

    .line 138
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 130
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "apkFile":Ljava/io/File;
    .restart local v5    # "count":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v15    # "savePath":Ljava/lang/String;
    .restart local v16    # "urlpath":Ljava/lang/String;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 124
    .end local v2    # "apkFile":Ljava/io/File;
    .end local v5    # "count":I
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v12    # "length":I
    .end local v15    # "savePath":Ljava/lang/String;
    .end local v16    # "urlpath":Ljava/lang/String;
    :catch_4
    move-exception v6

    goto :goto_2
.end method
