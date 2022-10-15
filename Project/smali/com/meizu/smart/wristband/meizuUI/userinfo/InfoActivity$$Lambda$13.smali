.class final synthetic Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

.field private final arg$2:I

.field private final arg$3:Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILandroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;->arg$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;->arg$2:I

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;->arg$3:Landroid/app/Dialog;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILandroid/app/Dialog;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILandroid/app/Dialog;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILandroid/app/Dialog;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILandroid/app/Dialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;->arg$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;->arg$2:I

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;->arg$3:Landroid/app/Dialog;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$lambda$12(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILandroid/app/Dialog;Ljava/lang/Void;)V

    return-void
.end method
