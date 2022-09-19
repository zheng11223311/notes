.class public Lcom/youku/vo/MessageSystem$Msg;
.super Ljava/lang/Object;
.source "MessageSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/MessageSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Msg"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public isReaded:Z

.field public skip_inf:Lcom/youku/vo/SkipInfo;

.field public text_body:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/MessageSystem;

.field public time:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public updateTime_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/MessageSystem;)V
    .locals 1

    .prologue
    .line 9
    iput-object p1, p0, Lcom/youku/vo/MessageSystem$Msg;->this$0:Lcom/youku/vo/MessageSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/MessageSystem$Msg;->isReaded:Z

    return-void
.end method
