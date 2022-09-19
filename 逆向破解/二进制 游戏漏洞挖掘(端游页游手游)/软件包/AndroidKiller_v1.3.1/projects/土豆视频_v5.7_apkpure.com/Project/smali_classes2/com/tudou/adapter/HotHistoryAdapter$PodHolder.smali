.class Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;
.super Ljava/lang/Object;
.source "HotHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/HotHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PodHolder"
.end annotation


# instance fields
.field public podcast1:Landroid/widget/RelativeLayout;

.field public podcast1Img:Landroid/widget/ImageView;

.field public podcast1Name:Landroid/widget/TextView;

.field public podcast1Sign:Landroid/widget/TextView;

.field public podcast1V:Landroid/widget/ImageView;

.field public podcast2:Landroid/widget/RelativeLayout;

.field public podcast2Img:Landroid/widget/ImageView;

.field public podcast2Name:Landroid/widget/TextView;

.field public podcast2Sign:Landroid/widget/TextView;

.field public podcast2V:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tudou/adapter/HotHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/HotHistoryAdapter;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
