.class final synthetic Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$6;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment$$Lambda$6;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;->access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/login_regist/regist/PhoneRegistFragment;Ljava/lang/Boolean;)V

    return-void
.end method