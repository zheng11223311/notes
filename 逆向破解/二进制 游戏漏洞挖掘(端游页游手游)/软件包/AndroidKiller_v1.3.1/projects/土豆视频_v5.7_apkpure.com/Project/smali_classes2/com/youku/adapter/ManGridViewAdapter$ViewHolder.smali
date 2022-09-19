.class Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ManGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/ManGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public manDirectImg0:Landroid/widget/ImageView;

.field public manDirectImg1:Landroid/widget/ImageView;

.field public manDirectShort0:Landroid/widget/TextView;

.field public manDirectShort1:Landroid/widget/TextView;

.field public manDirectTime0:Landroid/widget/TextView;

.field public manDirectTime1:Landroid/widget/TextView;

.field public manDirectTitle0:Landroid/widget/TextView;

.field public manDirectTitle1:Landroid/widget/TextView;

.field public noMusicRel0:Landroid/widget/RelativeLayout;

.field public noMusicRel1:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/youku/adapter/ManGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/ManGridViewAdapter;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/youku/adapter/ManGridViewAdapter$ViewHolder;->this$0:Lcom/youku/adapter/ManGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
