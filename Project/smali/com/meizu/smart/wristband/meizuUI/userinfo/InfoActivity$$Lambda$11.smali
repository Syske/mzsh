.class final synthetic Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$11;->arg$1:Landroid/app/Dialog;

    return-void
.end method

.method private static get$Lambda(Landroid/app/Dialog;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$11;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$11;-><init>(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public static lambdaFactory$(Landroid/app/Dialog;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$11;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$11;-><init>(Landroid/app/Dialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$11;->arg$1:Landroid/app/Dialog;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$lambda$10(Landroid/app/Dialog;Ljava/lang/Void;)V

    return-void
.end method
