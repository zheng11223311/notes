.class public Lcom/youku/vo/CardsInfo;
.super Ljava/lang/Object;
.source "CardsInfo.java"


# static fields
.field public static final TYPE_HEAD:I = 0x1

.field public static final TYPE_NORMAL:I


# instance fields
.field public cardType:I

.field public corner_image:Ljava/lang/String;

.field public cover_image:Ljava/lang/String;

.field public image_200_300:Ljava/lang/String;

.field public image_448_252:Ljava/lang/String;

.field public image_800_407:Ljava/lang/String;

.field public image_800_450:Ljava/lang/String;

.field public image_b_l_title:Ljava/lang/String;

.field public image_b_r_title:Ljava/lang/String;

.field public is_big_image:Ljava/lang/String;

.field public module_cover_image:Ljava/lang/String;

.field public module_id:Ljava/lang/String;

.field public owner_id:Ljava/lang/String;

.field public owner_nickname:Ljava/lang/String;

.field public owner_pic:Ljava/lang/String;

.field public skip_inf:Lcom/youku/vo/SkipInfo;

.field public sub_title:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/CardsInfo;->cardType:I

    return-void
.end method
