.class public Lcom/tudou/adapter/UploadItemTitle;
.super Lcom/tudou/adapter/UploadItemType;
.source "UploadItemTitle.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field public mUploadTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/tudou/adapter/UploadItemType;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/tudou/adapter/UploadItemTitle;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/UploadItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/tudou/adapter/UploadItemTitle;->init()V

    .line 23
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "layout_inflater"

    .line 29
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/UploadItemTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItemTitle;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iget-object v1, p0, Lcom/tudou/adapter/UploadItemTitle;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03031d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    const v1, 0x7f0c0d86

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/UploadItemTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItemTitle;->mUploadTitle:Landroid/widget/TextView;

    .line 32
    return-void
.end method
