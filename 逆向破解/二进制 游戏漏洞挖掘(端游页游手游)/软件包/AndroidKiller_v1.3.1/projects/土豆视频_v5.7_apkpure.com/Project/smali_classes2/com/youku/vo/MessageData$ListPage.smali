.class public Lcom/youku/vo/MessageData$ListPage;
.super Ljava/lang/Object;
.source "MessageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/MessageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListPage"
.end annotation


# instance fields
.field public pg:Ljava/lang/String;

.field public pz:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/MessageData;

.field public totalNumberOfElements:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/MessageData;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/youku/vo/MessageData$ListPage;->this$0:Lcom/youku/vo/MessageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
