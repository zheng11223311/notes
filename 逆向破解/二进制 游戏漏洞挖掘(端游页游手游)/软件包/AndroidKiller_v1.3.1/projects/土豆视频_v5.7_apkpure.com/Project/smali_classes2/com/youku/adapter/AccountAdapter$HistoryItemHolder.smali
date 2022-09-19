.class public Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;
.super Ljava/lang/Object;
.source "AccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/AccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryItemHolder"
.end annotation


# instance fields
.field playPositionTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/youku/adapter/AccountAdapter;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/youku/adapter/AccountAdapter;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;->this$0:Lcom/youku/adapter/AccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
