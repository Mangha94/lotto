package kr.lotto.model.member;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class MemberRepositoryImp extends SqlSessionDaoSupport implements MemberRepository {

    @Override
    public MemberData getMember(String memberId){
        return getSqlSession().selectOne("MemberData.getMember",memberId);
    }

    @Override
    public int getCountMemberId(String memberId){
        return getSqlSession().selectOne("MemberData.getCountMemberId",memberId);
    }
    @Override
    public void addMember(MemberData memberData){
        getSqlSession().insert("MemberData.addMember",memberData);
    }

    @Override
    public void deleteMember(String memberId){
        getSqlSession().delete("MemberData.deleteMember",memberId);
    }

    @Override
    public void modifyMember(MemberData memberData){
        getSqlSession().update("MemberData.modifyMember",memberData);
    }

    @Override
    public int getCount(){
        return getSqlSession().selectOne("MemberData.getCount");
    }

    @Override
    public int searchMemberCnt(Map<String,Object> searchMap){
        return getSqlSession().selectOne("MemberData.searchMemberCnt",searchMap);
    }

    @Override
    public List<MemberData> searchMember(Map<String,Object> searchMap){
        return getSqlSession().selectList("MemberData.searchMember",searchMap);
    }


}
