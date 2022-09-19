.class public Lcom/youku/vo/Notifications;
.super Ljava/lang/Object;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/Notifications$Video_status;,
        Lcom/youku/vo/Notifications$Sys_notify;,
        Lcom/youku/vo/Notifications$View_record;,
        Lcom/youku/vo/Notifications$Sub_updates;
    }
.end annotation


# instance fields
.field public playhistory:Lcom/youku/vo/Notifications$View_record;

.field public subupdates:Lcom/youku/vo/Notifications$Sub_updates;

.field public sysnotify:Lcom/youku/vo/Notifications$Sys_notify;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method
