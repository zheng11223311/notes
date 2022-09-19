.class public final Lcom/mobisage/android/MobiSageEnviroment;
.super Ljava/lang/Object;
.source "MobiSageEnviroment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageEnviroment$AdRefreshInterval;,
        Lcom/mobisage/android/MobiSageEnviroment$SystemEvent;,
        Lcom/mobisage/android/MobiSageEnviroment$EventType;,
        Lcom/mobisage/android/MobiSageEnviroment$NetworkState;,
        Lcom/mobisage/android/MobiSageEnviroment$MobiSageActionType;,
        Lcom/mobisage/android/MobiSageEnviroment$CPAEventType;,
        Lcom/mobisage/android/MobiSageEnviroment$ActionType;
    }
.end annotation


# static fields
.field static final Anime_Duration:I = 0x3e8

.field public static final App_Customer_Event:I = 0x0

.field public static final App_Launching_Event:I = 0x1

.field public static final App_Terminating_Event:I = 0x2

.field static final DATA_FORMAT:Ljava/lang/String; = "json"

.field static final FORMAT:Ljava/lang/String; = "json_compact"

.field static final MobiSage_Cache_Dir:Ljava/lang/String; = "Cache"

.field static final MobiSage_Cache_Effective_Time:J = 0x240c8400L

.field static final MobiSage_Configure_Host:Ljava/lang/String; = "config.adsage.com"

.field static final MobiSage_NA_Interval:I = 0x1c20

.field static final MobiSage_Read_TimeOut:I = 0x1388

.field static final MobiSage_Request_Filter_Time:I = 0x2710

.field static final MobiSage_Root_Dir:Ljava/lang/String; = "MobiSage"

.field static final MobiSage_Temp_Dir:Ljava/lang/String; = "Temp"

.field static final MobiSage_Timeout_Interval:I = 0xf

.field static final MobiSage_Track_Dir:Ljava/lang/String; = "Track"

.field static final MobiSage_Track_Effective_Time:J = 0xf731400L

.field static final PACK:Ljava/lang/String; = "pack"

.field static final SDK_ClientType:I = 0x1

.field static final SDK_OEM_ID:I = 0x17

.field static final SDK_Platform:I = 0x2

.field public static final SDK_Version:Ljava/lang/String; = "5.5.5"

.field public static final SDK_Version_Small:Ljava/lang/String; = "d5dc86586c75c24f82b119bb7c70ae1ada439448"

.field static final UID_TYPE:I = 0x3

.field static isTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mobisage/android/MobiSageEnviroment;->isTestMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method static getAdRefreshTime(I)I
    .locals 1
    .param p0, "refreshInterval"    # I

    .prologue
    .line 149
    packed-switch p0, :pswitch_data_0

    .line 157
    :pswitch_0
    const/16 v0, 0x14

    :goto_0
    return v0

    .line 151
    :pswitch_1
    const/16 v0, 0x1c20

    goto :goto_0

    .line 153
    :pswitch_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 155
    :pswitch_3
    const/16 v0, 0x3c

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
