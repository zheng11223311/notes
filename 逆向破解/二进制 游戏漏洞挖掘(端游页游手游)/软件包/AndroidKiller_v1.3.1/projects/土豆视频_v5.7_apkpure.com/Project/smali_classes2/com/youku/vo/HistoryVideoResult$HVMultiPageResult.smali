.class public Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;
.super Ljava/lang/Object;
.source "HistoryVideoResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/HistoryVideoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HVMultiPageResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;
    }
.end annotation


# instance fields
.field public page:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/HistoryVideoResult;


# direct methods
.method public constructor <init>(Lcom/youku/vo/HistoryVideoResult;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->this$0:Lcom/youku/vo/HistoryVideoResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method
