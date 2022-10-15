.class public Lcom/meizu/smart/wristband/models/database/DatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static ASSETS_NAME:Ljava/lang/String; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "iwan2.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static DB_NAME:Ljava/lang/String;

.field private static DB_PATH:Ljava/lang/String;

.field private static databaseHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

.field private static myContext:Landroid/content/Context;


# instance fields
.field private RSportDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private baeSleepStateDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private baseSleepStateCoceDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private btDevDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gainEventDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/GainEvent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private heartRateDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private locationsDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private otherDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Other;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sleepDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sleepMotionDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sleepStateDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sportDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private userDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "/data/data/com.meizu.smart.wristband/databases/"

    sput-object v0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    .line 45
    const-string v0, "iwan2.db"

    sput-object v0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    .line 46
    const-string v0, "iwan2.db"

    sput-object v0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->ASSETS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v0, "iwan2.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    return-void
.end method

.method private static copyDataBase()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "outFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 153
    .local v4, "myInput":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "test.db"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 165
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    if-lez v3, :cond_0

    .line 166
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 170
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 171
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\u5199\u5165\u6210\u529f\uff1a"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 174
    return-void
.end method

.method public static copyFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v6, 0x0

    .line 114
    .local v6, "result":Z
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 116
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 125
    .local v3, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 127
    .local v5, "os":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 129
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-lez v4, :cond_2

    .line 130
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    .end local v0    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v5    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    :goto_1
    return v6

    .line 133
    .restart local v0    # "buffer":[B
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 134
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 135
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    const/4 v6, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "buffer":[B
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v5    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static destroyDataBaseHelper()V
    .locals 0

    .prologue
    .line 75
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    .line 76
    return-void
.end method

.method public static declared-synchronized getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-class v1, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->databaseHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 59
    invoke-static {v0, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    sput-object v0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->databaseHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 63
    :cond_0
    sput-object p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->myContext:Landroid/content/Context;

    .line 71
    sget-object v0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->databaseHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 326
    const-string v0, "Close db"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 327
    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->userDao:Lcom/j256/ormlite/dao/Dao;

    .line 328
    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->otherDao:Lcom/j256/ormlite/dao/Dao;

    .line 329
    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    .line 330
    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    .line 331
    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepMotionDao:Lcom/j256/ormlite/dao/Dao;

    .line 332
    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepStateDao:Lcom/j256/ormlite/dao/Dao;

    .line 333
    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    .line 334
    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sportDao:Lcom/j256/ormlite/dao/Dao;

    .line 335
    iput-object v1, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->gainEventDao:Lcom/j256/ormlite/dao/Dao;

    .line 336
    return-void
.end method

.method public getBaseSleepStateCodeDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->baseSleepStateCoceDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 271
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->baseSleepStateCoceDao:Lcom/j256/ormlite/dao/Dao;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->baseSleepStateCoceDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getBaseSleepStateDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->baeSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 262
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->baeSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->baeSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getBtDevDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 226
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getGainEventDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/GainEvent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->gainEventDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 299
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->gainEventDao:Lcom/j256/ormlite/dao/Dao;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->gainEventDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getHeartRateDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 281
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getLocationsDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->locationsDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 317
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->locationsDao:Lcom/j256/ormlite/dao/Dao;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->locationsDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getOtherDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Other;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->otherDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 217
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->otherDao:Lcom/j256/ormlite/dao/Dao;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->otherDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getRSportDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->RSportDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 308
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->RSportDao:Lcom/j256/ormlite/dao/Dao;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->RSportDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getSleepDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 235
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getSleepMotionDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepMotionDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 244
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepMotionDao:Lcom/j256/ormlite/dao/Dao;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepMotionDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getSleepStateDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepStateDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 253
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepStateDao:Lcom/j256/ormlite/dao/Dao;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sleepStateDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getSportDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sportDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 290
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sportDao:Lcom/j256/ormlite/dao/Dao;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->sportDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getUserDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->userDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 208
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->userDao:Lcom/j256/ormlite/dao/Dao;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->userDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;

    .prologue
    .line 81
    :try_start_0
    const-string v1, "Create db"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 82
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 83
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 84
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 85
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 86
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 87
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/SleepState;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 88
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 89
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 90
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 91
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 92
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 93
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 94
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create database:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I

    .prologue
    .line 179
    const/4 v1, 0x3

    if-ge p3, v1, :cond_0

    .line 181
    :try_start_0
    const-string v1, "begin to drop database:"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 182
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/User;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 183
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 184
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 185
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 186
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 187
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/SleepState;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 188
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 189
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 190
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 191
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 192
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 193
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 194
    const-class v1, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
