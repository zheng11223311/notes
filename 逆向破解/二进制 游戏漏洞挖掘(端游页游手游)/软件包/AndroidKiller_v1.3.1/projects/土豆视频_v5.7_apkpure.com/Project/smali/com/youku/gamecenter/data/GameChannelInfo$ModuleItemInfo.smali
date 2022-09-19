.class public Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;
.super Ljava/lang/Object;
.source "GameChannelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/data/GameChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleItemInfo"
.end annotation


# instance fields
.field public is_phone_use_only_one_unit:I

.field public module_id:I

.field public sub_channel_id_for_link:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public units:Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
