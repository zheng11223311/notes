.class public interface abstract Lcom/youku/service/login/ILogin;
.super Ljava/lang/Object;
.source "ILogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/service/login/ILogin$IMembershipCallBack;,
        Lcom/youku/service/login/ILogin$ICallBack;
    }
.end annotation


# static fields
.field public static final FAIL_DEFAULT_LOGIN:Ljava/lang/String; = "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static final FAIL_DEFAULT_REGIST:Ljava/lang/String; = "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"


# virtual methods
.method public abstract autoLogin(Lcom/youku/service/login/ILogin$ICallBack;)V
.end method

.method public abstract getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V
.end method

.method public abstract login(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
.end method

.method public abstract loginPhoneSpeed(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
.end method

.method public abstract logout()V
.end method

.method public abstract registPhone(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
.end method

.method public abstract register(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
.end method

.method public abstract reversePassword(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
.end method

.method public abstract scanAuthorize(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V
.end method

.method public abstract scanLogin(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V
.end method

.method public abstract updateMembership(Lcom/youku/service/login/ILogin$IMembershipCallBack;Z)V
.end method
