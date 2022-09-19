.class public interface abstract Lio/rong/push/PushConst;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/PushConst$ObjectName;,
        Lio/rong/push/PushConst$PushAction;
    }
.end annotation


# static fields
.field public static final ACTION_SYNC_VERSION:Ljava/lang/String; = "io.rong.push.check_version"

.field public static final HEARTBEAT_INTERVAL:I = 0x2bf20

.field public static final NAVIGATION_IP_EXPIRED_TIME:J = 0x6ddd00L

.field public static final PUSH_SHARE_PREFERENCE:Ljava/lang/String; = "RongPush"

.field public static final PUSH_VERSION:Ljava/lang/String;

.field public static final URL_PACKAGE_UNINSTALL:Ljava/lang/String; = "http://api.cn.ronghub.com/user/offline.json"

.field public static final URL_PUSH_SERVER:Ljava/lang/String; = "http://nav.cn.ronghub.com/navipush.json"

.field public static final URL_STATISTIC:Ljava/lang/String; = "https://stats.cn.ronghub.com/active.json"

.field public static final VERSION:I

.field public static final VERSION_CODE:I = 0x4e21


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lio/rong/common/Build;->SDK_VERSION:Ljava/lang/String;

    sput-object v0, Lio/rong/push/PushConst;->PUSH_VERSION:Ljava/lang/String;

    .line 17
    sget v0, Lio/rong/common/Build;->PUSH_VERSION:I

    sput v0, Lio/rong/push/PushConst;->VERSION:I

    return-void
.end method
