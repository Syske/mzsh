.class public Lcom/tencent/tinker/loader/SystemClassLoaderAdder;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/SystemClassLoaderAdder$V4;,
        Lcom/tencent/tinker/loader/SystemClassLoaderAdder$V14;,
        Lcom/tencent/tinker/loader/SystemClassLoaderAdder$V19;,
        Lcom/tencent/tinker/loader/SystemClassLoaderAdder$V23;
    }
.end annotation


# static fields
.field private static final CHECK_DEX_CLASS:Ljava/lang/String; = "com.tencent.tinker.loader.TinkerTestDexLoad"

.field private static final CHECK_DEX_FIELD:Ljava/lang/String; = "isPatch"

.field private static final TAG:Ljava/lang/String; = "Tinker.ClassLoaderAdder"

.field private static sPatchDexCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->sPatchDexCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDexInstall(Ljava/lang/ClassLoader;)Z
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v0, "com.tencent.tinker.loader.TinkerTestDexLoad"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    const-string v1, "isPatch"

    invoke-static {v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 107
    const-string v1, "Tinker.ClassLoaderAdder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDexInstall result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v0
.end method

.method public static installDexes(Landroid/app/Application;Ldalvik/system/PathClassLoader;Ljava/io/File;Ljava/util/List;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "loader"    # Ldalvik/system/PathClassLoader;
    .param p2, "dexOptDir"    # Ljava/io/File;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ldalvik/system/PathClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 60
    invoke-static {p1, p0}, Lcom/tencent/tinker/loader/AndroidNClassLoader;->inject(Ldalvik/system/PathClassLoader;Landroid/app/Application;)Lcom/tencent/tinker/loader/AndroidNClassLoader;

    move-result-object p1

    .line 64
    .end local p1    # "loader":Ldalvik/system/PathClassLoader;
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 65
    invoke-static {p1, p3, p2}, Lcom/tencent/tinker/loader/SystemClassLoaderAdder$V23;->access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 74
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->sPatchDexCount:I

    .line 76
    invoke-static {p1}, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->checkDexInstall(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    invoke-static {p1}, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->uninstallPatchDex(Ljava/lang/ClassLoader;)V

    .line 79
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "checkDexInstall failed"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 67
    invoke-static {p1, p3, p2}, Lcom/tencent/tinker/loader/SystemClassLoaderAdder$V19;->access$100(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_0

    .line 68
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 69
    invoke-static {p1, p3, p2}, Lcom/tencent/tinker/loader/SystemClassLoaderAdder$V14;->access$200(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-static {p1, p3, p2}, Lcom/tencent/tinker/loader/SystemClassLoaderAdder$V4;->access$300(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_0

    .line 82
    :cond_4
    return-void
.end method

.method public static uninstallPatchDex(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    sget v0, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->sPatchDexCount:I

    if-gtz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 88
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 89
    const-string v0, "pathList"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    const-string v1, "dexElements"

    sget v2, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->sPatchDexCount:I

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->reduceFieldArray(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "mPaths"

    sget v1, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->sPatchDexCount:I

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->reduceFieldArray(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 94
    const-string v0, "mFiles"

    sget v1, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->sPatchDexCount:I

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->reduceFieldArray(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 95
    const-string v0, "mZips"

    sget v1, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->sPatchDexCount:I

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->reduceFieldArray(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 97
    :try_start_0
    const-string v0, "mDexs"

    sget v1, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->sPatchDexCount:I

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->reduceFieldArray(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method
