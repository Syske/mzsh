.class public abstract Lcom/mob/tools/gui/PullToRequestBaseListAdapter;
.super Lcom/mob/tools/gui/PullToRequestAdatper;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 0
    .param p1, "view"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestAdatper;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
.end method

.method public abstract getItemId(I)J
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isFling()Z
.end method

.method public abstract onScroll(Lcom/mob/tools/gui/Scrollable;III)V
.end method
