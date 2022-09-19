.class public Lcom/youku/util/StatusUtils;
.super Ljava/lang/Object;
.source "StatusUtils.java"


# static fields
.field public static BUSINESS_CODE_CHARGERULEUPDATE:Ljava/lang/String; = null

.field public static BUSINESS_CODE_FORCEUPGRADE:Ljava/lang/String; = null

.field public static BUSINESS_CODE_INVALIDCI:Ljava/lang/String; = null

.field public static BUSINESS_CODE_INVALIDSESSIONID:Ljava/lang/String; = null

.field public static BUSINESS_CODE_NOBUSINESS:Ljava/lang/String; = null

.field public static BUSINESS_CODE_SUGGESTINGUPGRADE:Ljava/lang/String; = null

.field public static final BUSSINESS_CODE:Ljava/lang/String; = "business_code"

.field public static BUSSINESS_ERROR:I = 0x0

.field public static final ERROR:I = 0x90

.field public static final MSG_BLACK_ERROR:Ljava/lang/String; = "\u60a8\u5df2\u7ecf\u88ab\u5217\u5165\u9ed1\u540d\u5355"

.field public static final MSG_LOGIN_SUCESS:Ljava/lang/String; = "\u767b\u5f55\u6210\u529f"

.field public static final MSG_NETWORK_NO_RESPONSE:Ljava/lang/String; = "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5"

.field public static final MSG_NETWORK_SUCESS:Ljava/lang/String; = "\u83b7\u53d6\u6570\u636e\u6210\u529f"

.field public static final MSG_NETWORK_TIME_OUT:Ljava/lang/String; = "\u8bf7\u6c42\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5"

.field public static MSG_NOT_EXIST_ERROR:Ljava/lang/String; = null

.field public static final MSG_PASSWORD_ERROR:Ljava/lang/String; = "\u5bc6\u7801\u9519\u8bef"

.field public static MSG_SERVER_ERROR:Ljava/lang/String; = null

.field public static final MSG_USERNAME_ERROR:Ljava/lang/String; = "Email\u6216\u7528\u6237\u540d\u4e0d\u5b58\u5728"

.field public static final MSG_USER_EMAIL_ERROR_FORMAT:Ljava/lang/String; = "\u4e0d\u6b63\u786e\u7684Email\u683c\u5f0f"

.field public static final MSG_USER_EMAIL_EXISTED:Ljava/lang/String; = "\u90ae\u7bb1\u5df2\u7ecf\u88ab\u6ce8\u518c\u4e86\uff0c\u6362\u4e2a\u522b\u7684\u5427"

.field public static final MSG_USER_EMAIL_NEED:Ljava/lang/String; = "Email\u662f\u5fc5\u586b\u7684"

.field public static final MSG_USER_INVALID_AUTHCODE:Ljava/lang/String; = "\u9a8c\u8bc1\u7801\u65e0\u6548"

.field public static final MSG_USER_NAME_CONTAIN_BRACE:Ljava/lang/String; = "\u6635\u79f0\u53ea\u652f\u6301\u4e2d\u82f1\u6587\u3001\u6570\u5b57\u3001_\u548c-"

.field public static final MSG_USER_NAME_CONTAIN_INVALID_LETTER:Ljava/lang/String; = "\u6635\u79f0\u542b\u6709\u975e\u6cd5\u8bcd\u6c47"

.field public static final MSG_USER_NAME_EXISTED:Ljava/lang/String; = "\u8fd9\u4e2a\u6635\u79f0\u5df2\u7ecf\u88ab\u4eba\u7528\u4e86\uff0c\u6362\u4e2a\u522b\u7684\u5427"

.field public static final MSG_USER_NAME_EXISTED_2:Ljava/lang/String; = "\u8fd9\u4e2a\u6635\u79f0\u5df2\u7ecf\u88ab\u4eba\u7528\u4e86\uff0c\u6362\u4e2a\u522b\u7684\u5427"

.field public static final MSG_USER_NAME_NEED:Ljava/lang/String; = "\u6635\u79f0\u662f\u5fc5\u586b\u7684"

.field public static final MSG_USER_NAME_TOO_LONG:Ljava/lang/String; = "\u6635\u79f0\u592a\u957f\u4e86\uff0c\u6700\u591a7\u4e2a\u6c49\u5b57\u621614\u4e2a\u82f1\u6587\u6570\u5b57"

.field public static final MSG_USER_PSW_NEED:Ljava/lang/String; = "\u5bc6\u7801\u662f\u5fc5\u586b\u7684"

.field public static final MSG_USER_PSW_ONLY_ASC:Ljava/lang/String; = "\u5bc6\u7801\u53ea\u80fd\u662f\u82f1\u6587\u3001\u6570\u5b57\u6216\u7b26\u53f7\u5662"

.field public static final MSG_USER_PSW_TOO_LONG:Ljava/lang/String; = "\u5bc6\u7801\u6700\u591a12\u4e2a\u5b57\u7b26"

.field public static final MSG_USER_PSW_TOO_SHORT:Ljava/lang/String; = "\u5bc6\u7801\u81f3\u5c114\u4e2a\u5b57\u7b26"

.field public static final MSG_USER_RESULT_FAIL:Ljava/lang/String; = "\u571f\u8c46\u7f51\u7684\u6ce8\u518c\u529f\u80fd\u6682\u65f6\u4e0d\u80fd\u7528\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

.field public static final MSG_USER_RESULT_OK:Ljava/lang/String; = "\u6ce8\u518c\u6210\u529f"

.field public static final MSG_USER__FAIL:Ljava/lang/String; = "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

.field public static NET_INFO:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static NOT_EXIST_ERROR:I = 0x0

.field public static SERVER_ERROR:I = 0x0

.field public static SERVER_OK:I = 0x0

.field public static final SUCESS:I = 0xc8

.field public static final SYSTEM_CODE:Ljava/lang/String; = "sys_code"

.field public static SYSTEM_CODE_INPUTERROR:Ljava/lang/String; = null

.field public static SYSTEM_CODE_OK:Ljava/lang/String; = null

.field public static SYSTEM_CODE_SERVERERROR:Ljava/lang/String; = null

.field public static SYSTEM_CODE_SERVERNORESOURCE:Ljava/lang/String; = null

.field public static final TIME_OUT:I = 0xa9

.field public static final USER_EMAIL_ERROR_FORMAT:I = -0x2

.field public static final USER_EMAIL_EXISTED:I = -0x1

.field public static final USER_EMAIL_NEED:I = 0x0

.field public static final USER_EMAIL_NOT_OK:I = 0xc8

.field public static final USER_EMAIL_OK:I = 0x1

.field public static final USER_INVALID_AUTHCODE:I = 0x2

.field public static final USER_INVALID_PARAMETER:I = -0x1

.field public static final USER_NAME_CONTAIN_BRACE:I = -0x2

.field public static final USER_NAME_CONTAIN_INVALID_LETTER:I = -0x4

.field public static final USER_NAME_EXISTED:I = -0x10

.field public static final USER_NAME_EXISTED_2:I = -0x1

.field public static final USER_NAME_NEED:I = 0x0

.field public static final USER_NAME_NOT_OK:I = 0x64

.field public static final USER_NAME_OK:I = 0x1

.field public static final USER_NAME_TOO_LONG:I = -0x3

.field public static final USER_PSW_NEED:I = 0x0

.field public static final USER_PSW_NOT_OK:I = 0x12c

.field public static final USER_PSW_OK:I = 0x1

.field public static final USER_PSW_ONLY_ASC:I = -0x2

.field public static final USER_PSW_TOO_LONG:I = -0x3

.field public static final USER_PSW_TOO_SHORT:I = -0x4

.field public static final USER_REGIST_OK:I = 0x1

.field public static final USER_RESULT_FAIL:I = 0x0

.field public static final USER_RESULT_INVALID_PASS:I = -0x1

.field public static final USER_RESULT_IN_BLACK_LIST:I = -0x2

.field public static final USER_RESULT_NO_USER_NAME:I = 0x0

.field public static final USER_RESULT_OK:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    .line 36
    const-string v0, "000"

    sput-object v0, Lcom/youku/util/StatusUtils;->SYSTEM_CODE_OK:Ljava/lang/String;

    .line 37
    const-string v0, "001"

    sput-object v0, Lcom/youku/util/StatusUtils;->SYSTEM_CODE_INPUTERROR:Ljava/lang/String;

    .line 38
    const-string v0, "002"

    sput-object v0, Lcom/youku/util/StatusUtils;->SYSTEM_CODE_SERVERERROR:Ljava/lang/String;

    .line 39
    const-string v0, "003"

    sput-object v0, Lcom/youku/util/StatusUtils;->SYSTEM_CODE_SERVERNORESOURCE:Ljava/lang/String;

    .line 41
    const/16 v0, 0xb

    sput v0, Lcom/youku/util/StatusUtils;->SERVER_ERROR:I

    .line 42
    const-string v0, "\u670d\u52a1\u5668\u5f02\u5e38"

    sput-object v0, Lcom/youku/util/StatusUtils;->MSG_SERVER_ERROR:Ljava/lang/String;

    .line 43
    const-string v0, "\u6ca1\u6709\u76f8\u5173\u6570\u636e"

    sput-object v0, Lcom/youku/util/StatusUtils;->MSG_NOT_EXIST_ERROR:Ljava/lang/String;

    .line 48
    const-string v0, "000"

    sput-object v0, Lcom/youku/util/StatusUtils;->BUSINESS_CODE_NOBUSINESS:Ljava/lang/String;

    .line 49
    const-string v0, "001"

    sput-object v0, Lcom/youku/util/StatusUtils;->BUSINESS_CODE_INVALIDCI:Ljava/lang/String;

    .line 50
    const-string v0, "002"

    sput-object v0, Lcom/youku/util/StatusUtils;->BUSINESS_CODE_INVALIDSESSIONID:Ljava/lang/String;

    .line 51
    const-string v0, "003"

    sput-object v0, Lcom/youku/util/StatusUtils;->BUSINESS_CODE_SUGGESTINGUPGRADE:Ljava/lang/String;

    .line 52
    const-string v0, "004"

    sput-object v0, Lcom/youku/util/StatusUtils;->BUSINESS_CODE_FORCEUPGRADE:Ljava/lang/String;

    .line 53
    const-string v0, "005"

    sput-object v0, Lcom/youku/util/StatusUtils;->BUSINESS_CODE_CHARGERULEUPDATE:Ljava/lang/String;

    .line 55
    const/16 v0, 0xc

    sput v0, Lcom/youku/util/StatusUtils;->BUSSINESS_ERROR:I

    .line 57
    const/16 v0, 0xd

    sput v0, Lcom/youku/util/StatusUtils;->NOT_EXIST_ERROR:I

    .line 58
    const/16 v0, -0xb

    sput v0, Lcom/youku/util/StatusUtils;->SERVER_OK:I

    .line 62
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u6570\u636e\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    const/16 v1, 0xa9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u767b\u5f55\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Email\u6216\u7528\u6237\u540d\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u60a8\u5df2\u7ecf\u88ab\u5217\u5165\u9ed1\u540d\u5355"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    sget v1, Lcom/youku/util/StatusUtils;->SERVER_ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/youku/util/StatusUtils;->MSG_SERVER_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    sget v1, Lcom/youku/util/StatusUtils;->BUSSINESS_ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/youku/util/StatusUtils;->MSG_SERVER_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/youku/util/StatusUtils;->NET_INFO:Ljava/util/HashMap;

    sget v1, Lcom/youku/util/StatusUtils;->NOT_EXIST_ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/youku/util/StatusUtils;->MSG_NOT_EXIST_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method
