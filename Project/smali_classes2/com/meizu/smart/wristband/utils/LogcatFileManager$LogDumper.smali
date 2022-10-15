.class Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;
.super Ljava/lang/Thread;
.source "LogcatFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/utils/LogcatFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogDumper"
.end annotation


# instance fields
.field cmds:Ljava/lang/String;

.field private logcatProc:Ljava/lang/Process;

.field private mPID:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;

.field private mRunning:Z

.field private out:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/meizu/smart/wristband/utils/LogcatFileManager;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/utils/LogcatFileManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "pid"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->this$0:Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 241
    iput-object v1, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 242
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mRunning:Z

    .line 243
    iput-object v1, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->cmds:Ljava/lang/String;

    .line 245
    iput-object v1, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 250
    iput-object p2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mPID:Ljava/lang/String;

    .line 253
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logcat-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->access$000(Lcom/meizu/smart/wristband/utils/LogcatFileManager;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    const-string v1, "logcat  *:v | grep \"( Tohow )\""

    iput-object v1, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->cmds:Ljava/lang/String;

    .line 267
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 281
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->cmds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 282
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mRunning:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mRunning:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 309
    iput-object v6, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_3

    .line 315
    :try_start_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4

    .line 327
    :try_start_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 333
    :goto_2
    iput-object v6, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 336
    .end local v1    # "line":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 290
    .restart local v1    # "line":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->this$0:Lcom/meizu/smart/wristband/utils/LogcatFileManager;

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/LogcatFileManager;->access$100(Lcom/meizu/smart/wristband/utils/LogcatFileManager;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 300
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_6

    .line 308
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 309
    iput-object v6, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 311
    :cond_6
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_7

    .line 315
    :try_start_5
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 323
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4

    .line 327
    :try_start_6
    iget-object v2, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 333
    :goto_5
    iput-object v6, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    goto :goto_3

    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 320
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 318
    .end local v1    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 329
    :catch_4
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 306
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v3, :cond_8

    .line 308
    iget-object v3, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 309
    iput-object v6, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 311
    :cond_8
    iget-object v3, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_9

    .line 315
    :try_start_7
    iget-object v3, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 316
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 323
    :cond_9
    :goto_6
    iget-object v3, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_a

    .line 327
    :try_start_8
    iget-object v3, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 333
    :goto_7
    iput-object v6, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    :cond_a
    throw v2

    .line 318
    :catch_5
    move-exception v0

    .line 320
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method

.method public stopLogs()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/utils/LogcatFileManager$LogDumper;->mRunning:Z

    .line 273
    return-void
.end method
