.class public Lcom/tudou/adapter/CheckedAdapter;
.super Lcom/tudou/adapter/AbsAdapter;
.source "CheckedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tudou/adapter/AbsAdapter",
        "<",
        "Lcom/tudou/upload/UploadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mUploadItem:Lcom/tudou/adapter/UploadItem;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "aData":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    invoke-direct {p0}, Lcom/tudou/adapter/AbsAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tudou/adapter/CheckedAdapter;->mCurrentDatas:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    if-nez p2, :cond_0

    .line 33
    new-instance v1, Lcom/tudou/adapter/UploadItem;

    iget-object v2, p0, Lcom/tudou/adapter/CheckedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tudou/adapter/UploadItem;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tudou/adapter/CheckedAdapter;->mUploadItem:Lcom/tudou/adapter/UploadItem;

    .line 38
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/CheckedAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/upload/UploadInfo;

    .line 40
    .local v0, "info":Lcom/tudou/upload/UploadInfo;
    iget-object v1, p0, Lcom/tudou/adapter/CheckedAdapter;->mUploadItem:Lcom/tudou/adapter/UploadItem;

    iget-object v1, v1, Lcom/tudou/adapter/UploadItem;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/tudou/adapter/CheckedAdapter;->mUploadItem:Lcom/tudou/adapter/UploadItem;

    iget-object v1, v1, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    const v2, 0x7f020a10

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v1, p0, Lcom/tudou/adapter/CheckedAdapter;->mUploadItem:Lcom/tudou/adapter/UploadItem;

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/UploadItem;->setCheckingItemStatus(Lcom/tudou/upload/UploadInfo;)V

    .line 46
    iget-object v1, p0, Lcom/tudou/adapter/CheckedAdapter;->mUploadItem:Lcom/tudou/adapter/UploadItem;

    return-object v1

    .line 35
    .end local v0    # "info":Lcom/tudou/upload/UploadInfo;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    check-cast p2, Lcom/tudou/adapter/UploadItem;

    .end local p2    # "convertView":Landroid/view/View;
    iput-object p2, p0, Lcom/tudou/adapter/CheckedAdapter;->mUploadItem:Lcom/tudou/adapter/UploadItem;

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
