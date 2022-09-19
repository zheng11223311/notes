.class public Lcom/youku/vo/PayVodResult$result;
.super Ljava/lang/Object;
.source "PayVodResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/PayVodResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "result"
.end annotation


# instance fields
.field public channel_response:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/PayVodResult;


# direct methods
.method public constructor <init>(Lcom/youku/vo/PayVodResult;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/vo/PayVodResult$result;->this$0:Lcom/youku/vo/PayVodResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
