.class final synthetic Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;->arg$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;->arg$2:I

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;->arg$1:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;->arg$2:I

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$lambda$11(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
