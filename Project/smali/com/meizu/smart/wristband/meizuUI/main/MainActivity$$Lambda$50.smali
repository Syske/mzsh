.class final synthetic Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

.field private final arg$2:Landroid/app/AlertDialog;

.field private final arg$3:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

.field private final arg$4:Lcom/meizu/smart/wristband/models/database/entity/GainEvent;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;->arg$1:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;->arg$2:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;->arg$3:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    iput-object p4, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;->arg$4:Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;->arg$1:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;->arg$2:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;->arg$3:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;->arg$4:Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$lambda$49(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Landroid/view/View;)V

    return-void
.end method
