.class public Lcom/youku/vo/CacheFoloderTitleHolder;
.super Ljava/lang/Object;
.source "CacheFoloderTitleHolder.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field public cacheBack:Landroid/widget/ImageView;

.field public cacheTitleDriver:Landroid/widget/ImageView;

.field public cacheTitleEdit:Landroid/widget/TextView;

.field public cacheTitleTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->activity:Landroid/app/Activity;

    .line 24
    invoke-virtual {p0, p2}, Lcom/youku/vo/CacheFoloderTitleHolder;->initView(Landroid/view/View;)V

    .line 25
    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    const v1, 0x7f0c0094

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 33
    const v1, 0x7f0c0499

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheBack:Landroid/widget/ImageView;

    .line 34
    const v1, 0x7f0c049a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleDriver:Landroid/widget/ImageView;

    .line 35
    const v1, 0x7f0c049c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f0c049b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleTxt:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public setEdit(Z)V
    .locals 2
    .param p1, "edit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleDriver:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleDriver:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/youku/vo/CacheFoloderTitleHolder;->cacheTitleEdit:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
