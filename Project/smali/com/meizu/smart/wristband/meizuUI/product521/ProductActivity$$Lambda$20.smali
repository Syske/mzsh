.class final synthetic Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$20;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$20;->arg$1:Landroid/app/AlertDialog;

    return-void
.end method

.method private static get$Lambda(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$20;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$20;-><init>(Landroid/app/AlertDialog;)V

    return-object v0
.end method

.method public static lambdaFactory$(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$20;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$20;-><init>(Landroid/app/AlertDialog;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$$Lambda$20;->arg$1:Landroid/app/AlertDialog;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$lambda$19(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
