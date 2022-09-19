.class public Lcom/tudou/alipay/data/Constant$RespCode;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/alipay/data/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespCode"
.end annotation


# static fields
.field public static final ACCOUNT_FREEZE:Ljava/lang/String; = "4003"

.field public static final BINDFAIL_UNBIND:Ljava/lang/String; = "4005"

.field public static final DATA_FORMAT_ERROR:Ljava/lang/String; = "4001"

.field public static final NETWORK_ERROR:Ljava/lang/String; = "6002"

.field public static final ORDER_PAY_FAIL:Ljava/lang/String; = "4006"

.field public static final PAY_CANCEL:Ljava/lang/String; = "6001"

.field public static final PAY_SERVER_UPGRADE:Ljava/lang/String; = "6000"

.field public static final REBIND_ACCOUNT:Ljava/lang/String; = "4010"

.field public static final SUCCESS:Ljava/lang/String; = "9000"

.field public static final SYSTEM_EXCEPTION:Ljava/lang/String; = "4000"

.field public static final USER_UNBIND:Ljava/lang/String; = "4004"

.field public static final WEB_PAY_FAIL:Ljava/lang/String; = "7001"


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/data/Constant;


# direct methods
.method public constructor <init>(Lcom/tudou/alipay/data/Constant;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/tudou/alipay/data/Constant$RespCode;->this$0:Lcom/tudou/alipay/data/Constant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
