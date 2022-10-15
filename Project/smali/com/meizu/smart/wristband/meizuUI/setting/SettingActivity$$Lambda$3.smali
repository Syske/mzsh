.class final synthetic Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$3;->arg$1:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$$Lambda$3;->arg$1:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Ljava/lang/Void;)V

    return-void
.end method
