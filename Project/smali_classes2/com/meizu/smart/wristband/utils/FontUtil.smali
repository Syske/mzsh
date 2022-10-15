.class public Lcom/meizu/smart/wristband/utils/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# static fields
.field private static _instance:Lcom/meizu/smart/wristband/utils/FontUtil;

.field private static _instanceLocker:Ljava/lang/Object;

.field public static dinproTypeface:Landroid/graphics/Typeface;

.field public static flymeTypeface:Landroid/graphics/Typeface;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/utils/FontUtil;->_instanceLocker:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/smart/wristband/utils/FontUtil;->_instance:Lcom/meizu/smart/wristband/utils/FontUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/FontUtil;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 48
    .local v0, "assets":Landroid/content/res/AssetManager;
    const-string v1, "fonts/dinpro.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/meizu/smart/wristband/utils/FontUtil;->dinproTypeface:Landroid/graphics/Typeface;

    .line 49
    const-string v1, "fonts/flyme.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/meizu/smart/wristband/utils/FontUtil;->flymeTypeface:Landroid/graphics/Typeface;

    .line 50
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/utils/FontUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/meizu/smart/wristband/utils/FontUtil;->_instance:Lcom/meizu/smart/wristband/utils/FontUtil;

    if-nez v0, :cond_1

    .line 36
    sget-object v1, Lcom/meizu/smart/wristband/utils/FontUtil;->_instanceLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/meizu/smart/wristband/utils/FontUtil;->_instance:Lcom/meizu/smart/wristband/utils/FontUtil;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/meizu/smart/wristband/utils/FontUtil;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/utils/FontUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/smart/wristband/utils/FontUtil;->_instance:Lcom/meizu/smart/wristband/utils/FontUtil;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/meizu/smart/wristband/utils/FontUtil;->_instance:Lcom/meizu/smart/wristband/utils/FontUtil;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
