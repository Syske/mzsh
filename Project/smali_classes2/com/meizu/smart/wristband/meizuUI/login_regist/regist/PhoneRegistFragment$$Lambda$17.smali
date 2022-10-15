.class final synthetic Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;->arg$2:I

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;I)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;I)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;I)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;I)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$17;->arg$2:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->access$lambda$16(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;ILjava/lang/Long;)V

    return-void
.end method
