.class Lcom/tencent/tinker/loader/AndroidNClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "BUGLY"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field static oldDexFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field originClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tinker/loader/AndroidNClassLoader;->oldDexFiles:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ldalvik/system/PathClassLoader;)V
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ldalvik/system/PathClassLoader;

    .prologue
    .line 45
    invoke-virtual {p2}, Ldalvik/system/PathClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 46
    iput-object p2, p0, Lcom/tencent/tinker/loader/AndroidNClassLoader;->originClassLoader:Ldalvik/system/PathClassLoader;

    .line 47
    return-void
.end method

.method private static createAndroidNClassLoader(Ldalvik/system/PathClassLoader;)Lcom/tencent/tinker/loader/AndroidNClassLoader;
    .locals 14
    .param p0, "original"    # Ldalvik/system/PathClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v4, Lcom/tencent/tinker/loader/AndroidNClassLoader;

    const-string v0, ""

    invoke-direct {v4, v0, p0}, Lcom/tencent/tinker/loader/AndroidNClassLoader;-><init>(Ljava/lang/String;Ldalvik/system/PathClassLoader;)V

    .line 52
    const-string v0, "pathList"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 55
    const-string v0, "definingContext"

    invoke-static {v5, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    const-string v0, "pathList"

    invoke-static {v4, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 64
    const-string v0, "dexElements"

    invoke-static {v5, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 66
    array-length v8, v0

    move v2, v3

    :goto_0
    if-ge v2, v8, :cond_0

    aget-object v1, v0, v2

    .line 67
    const-string v9, "dexFile"

    invoke-static {v1, v9}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/DexFile;

    .line 68
    new-instance v9, Ljava/io/File;

    invoke-virtual {v1}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v9, Lcom/tencent/tinker/loader/AndroidNClassLoader;->oldDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 72
    :cond_0
    const-string v0, "makePathElements"

    new-array v1, v13, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    aput-object v2, v1, v3

    const-class v2, Ljava/io/File;

    aput-object v2, v1, v11

    const-class v2, Ljava/util/List;

    aput-object v2, v1, v12

    invoke-static {v5, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v6, v2, v3

    const/4 v3, 0x0

    aput-object v3, v2, v11

    aput-object v1, v2, v12

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v7, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-object v4
.end method

.method public static inject(Ldalvik/system/PathClassLoader;Landroid/app/Application;)Lcom/tencent/tinker/loader/AndroidNClassLoader;
    .locals 1
    .param p0, "originClassLoader"    # Ldalvik/system/PathClassLoader;
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/tencent/tinker/loader/AndroidNClassLoader;->createAndroidNClassLoader(Ldalvik/system/PathClassLoader;)Lcom/tencent/tinker/loader/AndroidNClassLoader;

    move-result-object v0

    .line 94
    invoke-static {p1, v0}, Lcom/tencent/tinker/loader/AndroidNClassLoader;->reflectPackageInfoClassloader(Landroid/app/Application;Ljava/lang/ClassLoader;)V

    .line 95
    return-object v0
.end method

.method private static reflectPackageInfoClassloader(Landroid/app/Application;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "reflectClassLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "mBase"

    .line 82
    const-string v1, "mPackageInfo"

    .line 83
    const-string v2, "mClassLoader"

    .line 85
    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 86
    invoke-static {v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 89
    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
