.class public Lcom/youku/vo/Notifications$Sys_notify;
.super Ljava/lang/Object;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sys_notify"
.end annotation


# instance fields
.field public icon:Ljava/lang/String;

.field public id:I

.field public skip_inf:Lcom/youku/vo/SkipInfo;

.field public text_body:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/Notifications;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Notifications;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/youku/vo/Notifications$Sys_notify;->this$0:Lcom/youku/vo/Notifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
