.class public Lcom/youku/widget/CacheDeletePopUpWindow;
.super Ljava/lang/Object;
.source "CacheDeletePopUpWindow.java"


# instance fields
.field public allButton:Landroid/widget/TextView;

.field private cont:Landroid/app/Activity;

.field public delButton:Landroid/widget/TextView;

.field private deleteCount:I

.field private deletePop:Lcom/youku/widget/PageBottomDeleteLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isAll:Z

.field private popUpView:Landroid/view/View;

.field private pw:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->isAll:Z

    .line 35
    iput-object p1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->cont:Landroid/app/Activity;

    .line 36
    iget-object v1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->cont:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->inflater:Landroid/view/LayoutInflater;

    .line 39
    iget-object v1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03006f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->popUpView:Landroid/view/View;

    .line 41
    iget-object v1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->popUpView:Landroid/view/View;

    const v2, 0x7f0c025b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/PageBottomDeleteLayout;

    iput-object v1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->deletePop:Lcom/youku/widget/PageBottomDeleteLayout;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 45
    .local v0, "height":I
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->popUpView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    .line 47
    invoke-direct {p0}, Lcom/youku/widget/CacheDeletePopUpWindow;->initView()V

    .line 49
    .end local v0    # "height":I
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->deletePop:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v0, v0, Lcom/youku/widget/PageBottomDeleteLayout;->allBtn:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->deletePop:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v0, v0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    .line 56
    return-void
.end method


# virtual methods
.method public dismiss()Z
    .locals 1

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->deleteCount:I

    return v0
.end method

.method public isAll()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->isAll:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAll(Z)V
    .locals 0
    .param p1, "isAll"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->isAll:Z

    .line 102
    return-void
.end method

.method public setDeleteCount(I)V
    .locals 0
    .param p1, "deleteCount"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->deleteCount:I

    .line 110
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1, "RelateView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/youku/widget/CacheDeletePopUpWindow;->pw:Landroid/widget/PopupWindow;

    const/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 73
    :cond_0
    return-void
.end method
