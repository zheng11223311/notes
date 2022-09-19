.class public Lcom/youku/vo/MyTicketsListResult$Result;
.super Ljava/lang/Object;
.source "MyTicketsListResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/MyTicketsListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public endtime:Ljava/lang/String;

.field public fk_odshow:Ljava/lang/String;

.field public projectid:Ljava/lang/String;

.field public starttime:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/MyTicketsListResult;

.field public type:Ljava/lang/String;

.field public used_time:Ljava/lang/String;

.field public used_user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/MyTicketsListResult;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/youku/vo/MyTicketsListResult$Result;->this$0:Lcom/youku/vo/MyTicketsListResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
