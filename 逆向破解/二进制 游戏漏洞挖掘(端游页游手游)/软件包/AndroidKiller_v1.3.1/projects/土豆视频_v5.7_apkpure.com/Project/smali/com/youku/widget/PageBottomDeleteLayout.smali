.class public Lcom/youku/widget/PageBottomDeleteLayout;
.super Landroid/widget/LinearLayout;
.source "PageBottomDeleteLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field public allBtn:Landroid/widget/TextView;

.field allSelectListener:Landroid/view/View$OnClickListener;

.field public delBtn:Landroid/widget/TextView;

.field deleteLisenter:Landroid/view/View$OnClickListener;

.field f0f0fColor:Landroid/content/res/ColorStateList;

.field private mInflater:Landroid/view/LayoutInflater;

.field private onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

.field private view:Landroid/view/View;

.field whiteColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/PageBottomDeleteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/youku/widget/PageBottomDeleteLayout$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/PageBottomDeleteLayout$1;-><init>(Lcom/youku/widget/PageBottomDeleteLayout;)V

    iput-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->allSelectListener:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/youku/widget/PageBottomDeleteLayout$2;

    invoke-direct {v0, p0}, Lcom/youku/widget/PageBottomDeleteLayout$2;-><init>(Lcom/youku/widget/PageBottomDeleteLayout;)V

    iput-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->deleteLisenter:Landroid/view/View$OnClickListener;

    .line 35
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->activity:Landroid/app/Activity;

    .line 36
    invoke-virtual {p0}, Lcom/youku/widget/PageBottomDeleteLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->whiteColor:Landroid/content/res/ColorStateList;

    .line 37
    invoke-virtual {p0}, Lcom/youku/widget/PageBottomDeleteLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->f0f0fColor:Landroid/content/res/ColorStateList;

    .line 39
    invoke-direct {p0}, Lcom/youku/widget/PageBottomDeleteLayout;->initView()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/PageBottomDeleteLayout;)Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/PageBottomDeleteLayout;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 43
    const-string v0, "layout_inflater"

    .line 44
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/widget/PageBottomDeleteLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03024a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->view:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->view:Landroid/view/View;

    const v2, 0x7f0c0b17

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->allBtn:Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->view:Landroid/view/View;

    const v2, 0x7f0c0b18

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->allBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/widget/PageBottomDeleteLayout;->allSelectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/widget/PageBottomDeleteLayout;->deleteLisenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public allOrNotAll(Lcom/youku/util/DeleteAbleItemList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "deleteList"    # Lcom/youku/util/DeleteAbleItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/util/DeleteAbleItemList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "downloadinfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {p1}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTag(Z)V

    .line 156
    const-string/jumbo v0, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTex(Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTag(Z)V

    .line 159
    const-string/jumbo v0, "\u5168\u9009"

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTex(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public allOrNotAll(Lcom/youku/util/DeleteCachingItemList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "deleteList"    # Lcom/youku/util/DeleteCachingItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/util/DeleteCachingItemList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "downloadinfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {p1}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTag(Z)V

    .line 141
    const-string/jumbo v0, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTex(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTag(Z)V

    .line 144
    const-string/jumbo v0, "\u5168\u9009"

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTex(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initial()V
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "\u5168\u9009"

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setAllBtnTex(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "\u5220\u9664"

    invoke-virtual {p0, v0}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->allBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public setAllBtnTag(Z)V
    .locals 2
    .param p1, "tag"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->allBtn:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public setAllBtnTex(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->allBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public setDelBtnTex(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "size"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 97
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->activity:Landroid/app/Activity;

    const v2, 0x7f0e00f4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 104
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5220\u9664 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->activity:Landroid/app/Activity;

    const v2, 0x7f0e00f2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 106
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    const v1, 0x7f020ad5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setDelBtnTex(Ljava/lang/String;)V
    .locals 3
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 87
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->activity:Landroid/app/Activity;

    const v2, 0x7f0e00f4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 88
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lcom/youku/widget/PageBottomDeleteLayout;->delBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public setOnBtnListener(Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/youku/widget/PageBottomDeleteLayout;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    .line 123
    return-void
.end method
