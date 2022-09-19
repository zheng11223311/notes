.class Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SearchChannelGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/SearchChannelGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private manDirectImg:Landroid/widget/ImageView;

.field private manDirectShort:Landroid/widget/TextView;

.field private manDirectTime:Landroid/widget/TextView;

.field private manDirectTitle:Landroid/widget/TextView;

.field private musicBtn:Landroid/widget/Button;

.field private musicRel:Landroid/widget/LinearLayout;

.field private musicTxt:Landroid/widget/TextView;

.field private noMusicRel:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/youku/adapter/SearchChannelGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchChannelGridViewAdapter;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->this$0:Lcom/youku/adapter/SearchChannelGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->noMusicRel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->noMusicRel:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->musicRel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->musicRel:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->manDirectImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->manDirectImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->manDirectTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->manDirectTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->manDirectTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->manDirectTime:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$502(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->manDirectShort:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$602(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->musicBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$702(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->musicTxt:Landroid/widget/TextView;

    return-object p1
.end method
