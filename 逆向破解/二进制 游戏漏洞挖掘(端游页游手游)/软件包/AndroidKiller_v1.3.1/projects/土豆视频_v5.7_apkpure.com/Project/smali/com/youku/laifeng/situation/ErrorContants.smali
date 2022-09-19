.class public Lcom/youku/laifeng/situation/ErrorContants;
.super Ljava/lang/Object;
.source "ErrorContants.java"


# static fields
.field public static final ERROR_ANCHOR_SENDPRESENT_TOSELF:Ljava/lang/String; = "\u65e0\u6cd5\u7ed9\u81ea\u5df1\u9001\u793c"

.field public static final ERROR_GET_MYSELFINFO:Ljava/lang/String; = "\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u5931\u8d25"

.field public static final ERROR_INPUT_EMAILFORMAT:Ljava/lang/String; = "\u90ae\u7bb1\u683c\u5f0f\u4e0d\u6b63\u786e"

.field public static final ERROR_INPUT_PASSWORD:Ljava/lang/String; = "\u8bf7\u8f93\u51656-16\u4f4d\u5b57\u7b26\u4f5c\u4e3a\u5bc6\u7801"

.field public static final ERROR_INTERNET_CONNOTCONNECT:Ljava/lang/String; = "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static final ERROR_SERVICERESPONSE_DECODE:Ljava/lang/String; = "\u670d\u52a1\u5668\u6570\u636e\u5f02\u5e38"

.field public static final INFO_ATTANTION_ADD:Ljava/lang/String; = "\u6dfb\u52a0\u5173\u6ce8\u6210\u529f"

.field public static final INFO_ATTANTION_DELETE:Ljava/lang/String; = "\u53d6\u6d88\u5173\u6ce8\u6210\u529f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showerror(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 25
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showinfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 33
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
