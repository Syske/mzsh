.class final synthetic Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$30;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# static fields
.field private static final instance:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$30;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$30;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$30;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$30;->instance:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$30;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/functions/Action1;
    .locals 1

    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$30;->instance:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$30;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$lambda$29(Ljava/lang/Boolean;)V

    return-void
.end method
