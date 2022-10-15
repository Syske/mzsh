.class final synthetic Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

.field private final arg$2:Landroid/app/AlertDialog;

.field private final arg$3:Lcom/meizu/smart/wristband/models/database/entity/BtDev;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;->arg$1:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;->arg$2:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;->arg$3:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;->arg$1:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;->arg$2:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$21;->arg$3:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-static {v0, v1, v2, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$lambda$20(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Landroid/view/View;)V

    return-void
.end method
