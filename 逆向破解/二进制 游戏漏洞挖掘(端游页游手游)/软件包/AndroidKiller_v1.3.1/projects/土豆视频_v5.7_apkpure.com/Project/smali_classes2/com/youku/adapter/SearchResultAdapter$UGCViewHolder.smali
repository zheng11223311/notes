.class Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UGCViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field private ugcImage:Lcom/youku/widget/YoukuImageView;

.field private ugcImage1:Lcom/youku/widget/YoukuImageView;

.field private ugcL:Landroid/widget/RelativeLayout;

.field private ugcL1:Landroid/widget/RelativeLayout;

.field private ugcOwner:Landroid/widget/TextView;

.field private ugcOwner1:Landroid/widget/TextView;

.field private ugcTitle:Landroid/widget/TextView;

.field private ugcTitle1:Landroid/widget/TextView;

.field private ugcTotalTimes:Landroid/widget/TextView;

.field private ugcTotalTimes1:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcL1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcL1:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcImage1:Lcom/youku/widget/YoukuImageView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Lcom/youku/widget/YoukuImageView;)Lcom/youku/widget/YoukuImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Lcom/youku/widget/YoukuImageView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcImage1:Lcom/youku/widget/YoukuImageView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcTitle1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcTitle1:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcOwner1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcOwner1:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcTotalTimes1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcTotalTimes1:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcL:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcImage:Lcom/youku/widget/YoukuImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Lcom/youku/widget/YoukuImageView;)Lcom/youku/widget/YoukuImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Lcom/youku/widget/YoukuImageView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcImage:Lcom/youku/widget/YoukuImageView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcOwner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcOwner:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcTotalTimes:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->ugcTotalTimes:Landroid/widget/TextView;

    return-object p1
.end method
