.class Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PresentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/PresentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field button:Landroid/widget/Button;

.field container:Landroid/widget/RelativeLayout;

.field content:Landroid/widget/TextView;

.field mTagValue:Ljava/lang/String;

.field progressView:Lcom/youku/gamecenter/widgets/ProgressView;

.field remainder:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->mTagValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMyTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->mTagValue:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->mTagValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMyTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->mTagValue:Ljava/lang/String;

    .line 178
    return-void
.end method
