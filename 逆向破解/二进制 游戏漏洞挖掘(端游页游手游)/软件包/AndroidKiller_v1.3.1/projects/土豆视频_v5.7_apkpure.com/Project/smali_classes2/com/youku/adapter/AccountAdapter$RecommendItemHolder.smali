.class public Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;
.super Ljava/lang/Object;
.source "AccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/AccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendItemHolder"
.end annotation


# instance fields
.field descTv1:Landroid/widget/TextView;

.field descTv2:Landroid/widget/TextView;

.field posterImg1:Lcom/youku/widget/YoukuImageView;

.field posterImg2:Lcom/youku/widget/YoukuImageView;

.field final synthetic this$0:Lcom/youku/adapter/AccountAdapter;

.field titleTv1:Landroid/widget/TextView;

.field titleTv2:Landroid/widget/TextView;

.field ugcLayout:Landroid/view/View;

.field ugcLayout1:Landroid/view/View;

.field ugcLayout2:Landroid/view/View;

.field ugcPoster1:Landroid/widget/ImageView;

.field ugcPoster2:Landroid/widget/ImageView;

.field ugcTag1:Landroid/widget/TextView;

.field ugcTag2:Landroid/widget/TextView;

.field ugcTitle1:Landroid/widget/TextView;

.field ugcTitle2:Landroid/widget/TextView;

.field ugcVImg1:Landroid/widget/ImageView;

.field ugcVImg2:Landroid/widget/ImageView;

.field videoLayout:Landroid/view/View;

.field videoLayout1:Landroid/view/View;

.field videoLayout2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/youku/adapter/AccountAdapter;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->this$0:Lcom/youku/adapter/AccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
