.class Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ASideManGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/ASideManGridViewAdapter;
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

.field final synthetic this$0:Lcom/youku/adapter/ASideManGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/ASideManGridViewAdapter;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->this$0:Lcom/youku/adapter/ASideManGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->noMusicRel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->noMusicRel:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->musicRel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->musicRel:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->manDirectImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->manDirectImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->manDirectTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->manDirectTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->manDirectShort:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->manDirectShort:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->manDirectTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->manDirectTime:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->musicTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->musicTxt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$702(Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$ViewHolder;->musicBtn:Landroid/widget/Button;

    return-object p1
.end method
