.class Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;
.super Ljava/lang/Object;
.source "YTContentMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tudou/YTContentMessageItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field img:Lio/rong/imkit/widget/AsyncImageView;

.field mContainer:Landroid/view/View;

.field mLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lio/rong/imkit/tudou/YTContentMessageItemProvider;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/rong/imkit/tudou/YTContentMessageItemProvider;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->this$0:Lio/rong/imkit/tudou/YTContentMessageItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
