.class Lcn/sharesdk/facebook/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/facebook/i;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebook/i;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/facebook/j;->a:Lcn/sharesdk/facebook/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    new-instance v0, Lcn/sharesdk/facebook/k;

    invoke-direct {v0, p0}, Lcn/sharesdk/facebook/k;-><init>(Lcn/sharesdk/facebook/j;)V

    invoke-virtual {v0}, Lcn/sharesdk/facebook/k;->start()V

    return-void
.end method
