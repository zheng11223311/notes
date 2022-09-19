.class Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GameHomeBoxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public card_more_layout:Landroid/view/View;

.field public card_tag:Ljava/lang/String;

.field public card_title:Landroid/widget/TextView;

.field public card_top_layout:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    const-string v0, "empty"

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;->card_tag:Ljava/lang/String;

    return-void
.end method
