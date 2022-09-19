.class Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;
.super Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;
.source "GameHomeBoxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "H5CardViewHolder"
.end annotation


# instance fields
.field public icon_txt:Landroid/widget/TextView;

.field public parentLayout:Landroid/view/View;

.field public poster:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$ViewHolder;-><init>()V

    return-void
.end method
