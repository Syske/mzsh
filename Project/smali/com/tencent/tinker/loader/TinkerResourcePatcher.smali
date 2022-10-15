.class Lcom/tencent/tinker/loader/TinkerResourcePatcher;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.ResourcePatcher"

.field private static final TEST_ASSETS_VALUE:Ljava/lang/String; = "only_use_to_test_tinker_resource.txt"

.field private static addAssetPathMethod:Ljava/lang/reflect/Method;

.field private static assetsFiled:Ljava/lang/reflect/Field;

.field private static ensureStringBlocksMethod:Ljava/lang/reflect/Method;

.field private static newAssetManager:Landroid/content/res/AssetManager;

.field private static packagesFiled:Ljava/lang/reflect/Field;

.field private static references:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static resDir:Ljava/lang/reflect/Field;

.field private static resourcePackagesFiled:Ljava/lang/reflect/Field;

.field private static resourcesImplFiled:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    .line 45
    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->addAssetPathMethod:Ljava/lang/reflect/Method;

    .line 46
    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->ensureStringBlocksMethod:Ljava/lang/reflect/Method;

    .line 47
    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->assetsFiled:Ljava/lang/reflect/Field;

    .line 48
    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcesImplFiled:Ljava/lang/reflect/Field;

    .line 49
    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resDir:Ljava/lang/reflect/Field;

    .line 50
    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->packagesFiled:Ljava/lang/reflect/Field;

    .line 51
    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcePackagesFiled:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkResUpdate(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    :try_start_0
    const-string v0, "Tinker.ResourcePatcher"

    const-string v1, "checkResUpdate success, found test resource assets file only_use_to_test_tinker_resource.txt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "only_use_to_test_tinker_resource.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v1, "Tinker.ResourcePatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkResUpdate failed, can\'t find test resource assets file only_use_to_test_tinker_resource.txt e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 241
    if-nez p1, :cond_0

    .line 242
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 244
    :cond_0
    const-string v0, "currentActivityThread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 245
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 246
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mLoadedApk"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mActivityThread"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 255
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 256
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    :cond_1
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 260
    goto :goto_0
.end method

.method public static isResourceCanPatch(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 59
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    :try_start_0
    const-string v0, "android.app.LoadedApk"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    const-string v2, "mApplication"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    const-string v2, "mResDir"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resDir:Ljava/lang/reflect/Field;

    .line 70
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resDir:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    const-string v0, "mPackages"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->packagesFiled:Ljava/lang/reflect/Field;

    .line 72
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->packagesFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    const-string v0, "mResourcePackages"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcePackagesFiled:Ljava/lang/reflect/Field;

    .line 75
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcePackagesFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.content.res.BaiduAssetManager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "android.content.res.BaiduAssetManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    .line 118
    :goto_1
    const-class v0, Landroid/content/res/AssetManager;

    const-string v2, "addAssetPath"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->addAssetPathMethod:Ljava/lang/reflect/Method;

    .line 119
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->addAssetPathMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 123
    const-class v0, Landroid/content/res/AssetManager;

    const-string v2, "ensureStringBlocks"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->ensureStringBlocksMethod:Ljava/lang/reflect/Method;

    .line 124
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->ensureStringBlocksMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 130
    const-string v0, "android.app.ResourcesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 131
    const-string v0, "getInstance"

    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 133
    const/4 v2, 0x0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    :try_start_1
    const-string v0, "mActiveResources"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 136
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 139
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :goto_2
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "resource references is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v0, "android.app.ActivityThread$PackageInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :cond_1
    const-class v0, Landroid/content/res/AssetManager;

    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    goto/16 :goto_1

    .line 140
    :catch_1
    move-exception v0

    .line 142
    const-string v0, "mResourceReferences"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;

    goto :goto_2

    .line 148
    :cond_2
    const-string v0, "mActiveResources"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    invoke-static {p0, v1}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 154
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;

    goto :goto_2

    .line 161
    :cond_3
    :try_start_2
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mAssets"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->assetsFiled:Ljava/lang/reflect/Field;

    .line 162
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->assetsFiled:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    :goto_3
    return-void

    .line 163
    :catch_2
    move-exception v0

    .line 165
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mResourcesImpl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcesImplFiled:Ljava/lang/reflect/Field;

    .line 166
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcesImplFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_3
.end method

.method public static monkeyPatchExistingResources(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "externalResourceFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 171
    if-nez p1, :cond_1

    .line 225
    :cond_0
    return-void

    .line 175
    :cond_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 176
    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 178
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/reflect/Field;

    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->packagesFiled:Ljava/lang/reflect/Field;

    aput-object v0, v4, v2

    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcePackagesFiled:Ljava/lang/reflect/Field;

    aput-object v0, v4, v8

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_4

    aget-object v0, v4, v1

    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_2

    .line 187
    if-eqz p1, :cond_2

    .line 188
    sget-object v7, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resDir:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 178
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 194
    :cond_4
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->addAssetPathMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create new AssetManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_5
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->ensureStringBlocksMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->references:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 203
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 205
    if-eqz v0, :cond_6

    .line 208
    :try_start_0
    sget-object v2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->assetsFiled:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_2

    .line 209
    :catch_0
    move-exception v2

    .line 211
    sget-object v2, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->resourcesImplFiled:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 213
    const-string v3, "mAssets"

    invoke-static {v2, v3}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 214
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 215
    sget-object v4, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->newAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 222
    :cond_7
    invoke-static {p0}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->checkResUpdate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "checkResInstall failed"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
