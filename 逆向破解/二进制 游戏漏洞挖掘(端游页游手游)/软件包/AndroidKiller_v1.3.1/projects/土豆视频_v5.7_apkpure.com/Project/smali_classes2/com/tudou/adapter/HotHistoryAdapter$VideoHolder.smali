.class Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;
.super Ljava/lang/Object;
.source "HotHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/HotHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/HotHistoryAdapter;

.field public videoDetail:Landroid/widget/TextView;

.field public videoImg:Landroid/widget/ImageView;

.field public videoPlayCount:Landroid/widget/TextView;

.field public videoTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/HotHistoryAdapter;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
