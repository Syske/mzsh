.class final Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;
.super Ljava/lang/Object;
.source "RadioGroupCheckedChangeOnSubscribe.java"

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
.field private final view:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/RadioGroup;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;->view:Landroid/widget/RadioGroup;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;->view:Landroid/widget/RadioGroup;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;->call(Lrx/Subscriber;)V

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
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;Lrx/Subscriber;)V

    .line 27
    .local v0, "listener":Landroid/widget/RadioGroup$OnCheckedChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;->view:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 29
    new-instance v1, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 36
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/RadioGroupCheckedChangeOnSubscribe;->view:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
