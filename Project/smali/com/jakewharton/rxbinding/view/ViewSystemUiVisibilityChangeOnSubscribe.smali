.class final Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;
.super Ljava/lang/Object;
.source "ViewSystemUiVisibilityChangeOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;->view:Landroid/view/View;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;Lrx/Subscriber;)V

    .line 28
    .local v0, "listener":Landroid/view/View$OnSystemUiVisibilityChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 30
    new-instance v1, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewSystemUiVisibilityChangeOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 35
    return-void
.end method
