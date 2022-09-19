.class public Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;
.super Ljava/lang/Object;
.source "HistoryVideoResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HVPage"
.end annotation


# instance fields
.field public pageCount:I

.field public pageNo:I

.field public pageSize:I

.field final synthetic this$1:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

.field public totalCount:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;->this$1:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
