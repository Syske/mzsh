.class final Lcom/jakewharton/rxbinding/view/RxMenuItem$5;
.super Ljava/lang/Object;
.source "RxMenuItem.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/RxMenuItem;->title(Landroid/view/MenuItem;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/RxMenuItem$5;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/RxMenuItem$5;->val$menuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 156
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/RxMenuItem$5;->call(Ljava/lang/CharSequence;)V

    return-void
.end method
