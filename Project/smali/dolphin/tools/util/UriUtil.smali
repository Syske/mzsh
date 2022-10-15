.class public Ldolphin/tools/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .param p0, "paramUri"    # Landroid/net/Uri;
    .param p1, "paramContentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 15
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    .local v2, "arrayOfString":[Ljava/lang/String;
    move-object v0, p1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 19
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    aget-object v0, v2, v9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 22
    .local v6, "a":I
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 23
    .local v7, "b":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 24
    return-object v7
.end method

.method public static getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 11
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 30
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 32
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object v9, v4, v10

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "localCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 33
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 37
    .local v6, "a":I
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 46
    .end local v6    # "a":I
    :cond_0
    :goto_0
    return-object v5

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v7, "d":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 42
    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method
